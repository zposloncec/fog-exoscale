## Configuration of Fog for exoscale

Let's create a new Exoscale client with Fog.

```
>> exo = Fog::Compute.new({ :provider => 'exoscale', :exoscale_api_key => '<your_api_key>', :exoscale_secret_access_key => '<your_secret_key>'} )
```

The result should be something like:

```
<Fog::Compute::Exoscale::Real:78162758717840 @exoscale_api_key=<your_api_key> @exoscale_secret_access_key=<your_secret_key> [...] @socket_key="https://api.exoscale.ch:443">
```

(If the result is something like `ArgumentError: exoscale is not a recognized compute provider`, you most likely haven't installed the `fog-exoscale` module.)

While this works, there's a better way. 

You can add your API key and Secret key in your `~/.fog` file:

```
:default:
  :exoscale_api_key: '<your_api_key>'
  :exoscale_secret_access_key: '<your_secret_key>
```

Then you should be able to connect to your exoscale account:

```
>> exo = Fog::Compute[:exoscale]
```
