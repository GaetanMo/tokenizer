# Déploiement du Token42

Ce document explique comment déployer le smart contract **Token42** sur une blockchain de test (Sepolia) en utilisant **Foundry**.

---

## Pré-requis

- [Foundry](https://getfoundry.sh/) installé
	```bash
	curl -L https://foundry.paradigm.xyz | bash
	foundryup
	```
- Compte Ethereum avec clé privée
- Clé RPC (Infura, Alchemy, etc.)
- `.env` avec vos variables :
	SEPOLIA_RPC="https://sepolia.infura.io/v3/YOUR_INFURA_KEY" // ou utiliser RPC public
	PRIVATE_KEY="votre_clé_privée"


## Déploiement avec Foundry

1. Se placer dans le dossier `deployment` :
   ```bash
   cd deployment
2. Installer les dépendances :
	```
	forge install OpenZeppelin/openzeppelin-contracts
	```
3. Vérifier le script de déploiement Deploy.s.sol

4. Mettre les variables dans un .env :
	```
	SEPOLIA_RPC="https://sepolia.infura.io/v3/YOUR_INFURA_KEY" // ou utiliser RPC public
	PRIVATE_KEY="votre_clé_privée"
	```
5. Charger les variables d'environnement :
	```bash
	source .env
	```
6. Lancer le déploiement :
	```bash
	forge script deploy.s.sol \
    --rpc-url $SEPOLIA_RPC \
    --private-key $PRIVATE_KEY \
    --broadcast
	```
7. Une fois terminé, notez l’adresse du contrat déployé.

## Actions sur le contrat

1. Creer les scripts (plusieurs exemples sont dans deployment)

2. Puis le lancer avec Foundry
	```bash
		forge script burn.s.sol \   
		--rpc-url $SEPOLIA_RPC \
		--private-key $PRIVATE_KEY \
		--broadcast
	```