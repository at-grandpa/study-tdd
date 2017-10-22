package money;

import org.junit.jupiter.api.Test;

import jdk.internal.jline.internal.TestAccessible;

import static org.junit.jupiter.api.Assertions.*;

/**
 * MoneyTest
 */
public class MoneyTest {
    @Test
    public void testMultiplication() {
        Dollar five = new Dollar(5);
        five.times(2);
        assertEquals(10, five.amount);
    }
}