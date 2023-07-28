//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/8/23.
//

import UIKit

final class RMCharacterListViewViewModel: NSObject {
    func fetchCharacters(){
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result{
            case .success(let model):
                print("total: "+String(model.info.pages))
                print("page result count: "+String(model.results.count))

            case .failure(let error):
                print(String(describing: error))
                
            }
        }
    }
}

extension RMCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath) as? RMCharacterCollectionViewCell else{
            fatalError("Unsupported Cell")
        }
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "JOE", characterStatus: .alive, characterImageUrl: nil)
        cell.configure(with: viewModel)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //obtains the measurements of current screen - different iphones have different sizes - and sets the #'s appropriately
        let bounds = UIScreen.main.bounds
        let width = (bounds.width-30)/2
        return CGSize(width: width, height: width*1.5)
    }
}
