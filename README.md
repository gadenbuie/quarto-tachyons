# Tachyons Extension For Quarto


Add [Tachyons](https://tachyons.io/) to your Quarto documents.

## Installing

``` bash
quarto add gadenbuie/quarto-tachyons
```

This will install the extension under the `_extensions` subdirectory. If
you’re using version control, you will want to check in this directory.

## Using

To use the extension, include `tachyons` in the list of filters in your
document metadata or in your `_quarto.yml` configuration file.

``` yaml
filters:
  - tachyons
```

The version of Tachyons in this extension includes a small bit of
additional CSS to avoid clashes between Tachyons classes and pandoc’s
built-in code style classes.

## Example

Then use Tachyons classes as desired! (Example from the [Tachyons
documentation](https://tachyons.io/components/cards/product-card/index.html).)

``` html
<article class="br2 ba dark-gray b--black-10 mv4 w-100 w-50-m w-25-l mw5 center">
  <img src="manja-vitolic-gKXKBY-C-Dk-unsplash.jpg" class="db w-100 br2 br--top" alt="Photo of a kitten looking menacing.">
  <div class="pa2 ph3-ns pb3-ns">
    <div class="dt w-100 mt1">
      <div class="dtc">
        <h1 class="f5 f4-ns mv0">Cat</h1>
      </div>
      <div class="dtc tr">
        <h2 class="f5 mv0">$1,000</h2>
      </div>
    </div>
    <p class="f6 lh-copy measure mt2 mid-gray">
      If it fits, i sits burrow under covers. Destroy couch leave hair everywhere,
      and touch water with paw then recoil in horror.
    </p>
  </div>
</article>
```
