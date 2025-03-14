# Bitcoin Price Tracker

O **Bitcoin Price Tracker** é uma aplicação web desenvolvida para monitorar o preço atual do Bitcoin (BTC) em dólares americanos (USD), exibir um gráfico das últimas 24 horas e fornecer informações como a taxa de transação (em sat/vB) e a variação percentual do preço. Construído com Flask, Chart.js e APIs da Binance e mempool.space, o projeto é hospedado em um container Docker e gerenciado via Portainer, com atualizações automáticas a partir do GitHub.

## Example
![foto](image.png)

## Funcionalidades
- Exibe o preço atual do Bitcoin em tempo real.
- Mostra um gráfico de linha das últimas 24 horas de preço.
- Apresenta a taxa de transação atual (em sat/vB).
- Calcula e exibe a variação percentual do preço nas últimas 24 horas.
- A cor do gráfico muda para verde quando a variação é positiva e vermelho quando é negativa ou zero.
- Design futurista e responsivo.

## Pré-requisitos
- Python 3.9+
- Docker
- Portainer
- Acesso à internet para APIs externas

## Instalação Local
1. Clone o repositório:
   ```bash
   git clone https://github.com/joneireis/bitcoin-price-tracker.git
   cd bitcoin-price-tracker

   