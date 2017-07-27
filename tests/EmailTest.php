<?php
declare(strict_types=1);
namespace N11t\DockerTest;

use PHPUnit\Framework\TestCase;

/**
 * @covers Email
 */
final class EmailTest extends TestCase
{
	public function testCanBeCreatedFromValidEmailAddress(): void
	{
		self::assertInstanceOf(
			Email::class,
			Email::fromString('user@example.com')
		);
	}

	public function testCannotBeCreatedFromInvalidEmailAddress(): void
	{
		self::expectException(\InvalidArgumentException::class);

		Email::fromString('invalid');
	}

	public function testCanBeUsedAsString(): void
	{
		self::assertEquals(
			'user@example.com',
			Email::fromString('user@example.com')
		);
	}
}
