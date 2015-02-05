<?php

/**
 * @file
 * Contains \FeatureContext.
 */

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * Visit the calculator page.
   *
   * @Given I am on the calculator page
   */
  public function iAmOnTheCalculatorPage() {
    $path = 'calculator';
    $this->getSession()->visit($this->locatePath($path));
  }

}
