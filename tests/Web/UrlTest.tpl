<?php

namespace Librinfo\EmailBundle\Tests\Web;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class UrlTest extends WebTestCase
{
    /**
     * @dataProvider urlProvider
     */
    public function testPageIsSuccessful($url)
    {
        $client = self::createClient();
        $client->request('GET', $url);
        
        $this->assertTrue($client->getResponse()->isSuccessful());
    }
    
    public function urlProvider()
    {
        return array(
            array('/librinfo/email/email/list'),
            array('/librinfo/email/email/create'),
            array('/librinfo/email/emailtemplate/list'),
            array('/librinfo/email/emailreceipt/list'),
            array('/librinfo/email/emaillink/list')
        );
    }
    
/*    public function tryToTest()
    {
        $client = self::createClient();
        
        $crawler = $client->request('GET', '/');

        /* Example */
        /*
        $link = $crawler->selectLink('Add new')->link();
        $crawler = $client->click($link);
        $this->assertContains(
            'Title',
            $crawler->filter('label')
        );
    }
        */
}
