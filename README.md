# gmorel42 (GM42) — ERC-20 Token on Sepolia

Token ERC-20 développé et déployé sur le testnet **Sepolia**
Projet réalisé avec **Foundry**

---


## 📌 Présentation du projet

Ce projet consiste à créer un token ERC-20 respectant les standards de la blockchain Ethereum.
Le nom du token est **gmorel42** et son ticker est **GM42**.

Le token est développé en Solidity à l’aide de Foundry, tout en respectant les bonnes pratiques de sécurité grâce à l'utilisation des contrats OpenZeppelin.

Aucune monnaie réelle n'est utilisée : le déploiement se fera uniquement sur la blockchain Sepolia, un testnet Ethereum.

## 🚀 Choix techniques

### ✔️ Blockchain choisie : Sepolia

C’est le testnet officiel moderne d’Ethereum, compatible avec les outils modernes (Foundry, Hardhat, Remix…).

### ✔️ Standard du token : ERC-20

Standard compatible avec les outils du réseau Ethereum.

Facilement extensible pour ajouter des fonctionnalités (burn, pause…).

### ✔️ Outil de développement : Foundry

Très rapide pour compiler, tester et déployer.
Intégration facile avec OpenZeppelin.

J'ai déjà eu l'occasion de travailler avec sur un autre projet perso.

### ✔️ Librairies : OpenZeppelin

Simplifie le développement et la sécurité.

---

## Fonctionnalités implémentées

| Fonctionnalité       | Description |
|----------------------|-------------|
| **Mint**             | Le propriétaire peut créer de nouveaux tokens |
| **Burn**             | Chaque utilisateur peut brûler ses propres tokens |
| **BurnFrom**         | Le propriétaire peut brûler les tokens d’un autre utilisateur |
| **Pause / Unpause**  | Le propriétaire peut geler toutes les opérations |
| **Transferts** | Les transferts sont bloqués lorsque le token est en pause |
| **Ownership**        | Gestion des privilèges via `Ownable` |

---

## Structure du dépôt

```python
root/
│── README.md
│── code/
│    └── Token42.sol
│
│── deployment/
│    └── (scripts Foundry pour déployer)
│
└── documentation/
     └── (documentation + whitepaper + utilisation du token)
```

## Smart Contract

Le contrat est situé dans le dossier `code/contract.sol`.

## Adresse du smart contract

```python
Contract Address : 0x................................
Network : Sepolia
Explorer : https://sepolia.etherscan.io/address/0x............
```
