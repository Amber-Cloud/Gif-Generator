# GifGen

This web application allows a user to enter a theme and view a randomly picked gif image according to the theme. The app uses Giphy API.

### Installing

This app requires your own API keys from Giphy. It is recommended to save the key as env variable GIPHY_API_KEY. If you do it, before you start the server, run

```
source ./.env
```

and 

```
mix deps.get
```

### Starting the server
To start the server on default port (80), run

```
mix phx.server
```

### Running the tests

To run the tests, run

```
mix test
```

## Author

Alisa Berdichevskaia [Amber-Cloud](https://github.com/Amber-Cloud)