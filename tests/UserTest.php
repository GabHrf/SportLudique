<?php

namespace App\Tests;

use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

class UserTest extends KernelTestCase
{
    public function getUser(): User
    {
        return (new User())
            ->setFirstName('John')
            ->setLastName('Smith')
            ->setEmail('user@test.fr')
            ->setPassword('12345678Aa@');
    }
    public function assertHasErrors(User $user, int $nberror = 0)
    {
        $kernel = self::bootKernel();
        $errors = self::$container->get('validator')->validate($user);
        $this->assertCount($nberror, $errors);
    }
    public function testValidUser(): void
    {
        $this->assertHasErrors($this->getUser(), 0);
    }
    public function testInvalidUser(): void
    {
        $this->assertHasErrors(
            $this->getUser()
                ->setFirstName('123A')
                ->setPassword('Azerty')
                ->setEmail('azerty.fr'), 3);
    }
}
