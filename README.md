# Proving-Universal-Gravitation

Simulates the gravitational force between two masses separated by various distances and demonstrates the inverse-square law of gravitation. It calculates the gravitational force using Newton’s law, plots the force versus distance, linearizes the data by plotting force versus the inverse square of distance, and performs a linear fit to validate the relationship.

---

## Features
- Calculation of gravitational force for a range of distances
- Plotting gravitational force versus distance
- Linearization of data to visualize the inverse-square relationship
- Polynomial fitting to extract the slope and verify the physics constant relationship
- Comparison between the fitted slope and the theoretical product of constants

---

## Physics Background
Newton’s law of universal gravitation states:

\[
F = G \frac{m_1 m_2}{r^2}
\]

where:
- \( F \) is the gravitational force,
- \( G \) is the universal gravitational constant,
- \( m_1 \) and \( m_2 \) are the masses,
- \( r \) is the distance between the masses.

By plotting \( F \) versus \( 1/r^2 \), we expect a linear relationship where the slope should equal \( G m_1 m_2 \).

## How to Run
1. Open `universal_gravity.m` in MATLAB.
2. Run the script.
3. Observe the three figures:
   - Force vs Distance
   - Linearized Force vs Inverse Distance Squared
   - Linearized Force with Line of Best Fit
4. Check the comparison between slope and expected product.


