/**
 * Copyright (c) 2013 Saddle Development Team
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

library saddle.vec.vec;

//import scala.{ specialized => spec }

import 'package:quiver/iterables.dart' as iter;

import '../vec.dart';
import '../array/array.dart';
import '../scalar/scalar_tag.dart';

/**
 * Factory methods to generate Vec instances
 */
///*package*/ class vec {
/**
 * Generate a uniform random Vec[Long] of a certain number of elements
 * @param sz Number of elements of random vector
 */
//  def randl(sz: Int): Vec[Long] = array.randLong(sz)

/**
 * Generate a uniform random positive Vec[Long] of a certain number of
 * elements
 * @param sz Number of elements of random vector
 */
//  def randpl(sz: Int): Vec[Long] = array.randLongPos(sz)

/**
 * Generate a uniform random Vec[Int] of a certain number of elements
 * @param sz Number of elements of random vector
 */
Vec<int> randi(int sz) => array.randInt(sz);

/**
 * Generate a uniform random positive Vec[Int] of a certain number of
 * elements
 * @param sz Number of elements of random vector
 */
Vec<int> randpi(int sz) => array.randIntPos(sz);

/**
 * Generate a uniform random Vec[Double] of a certain number of elements
 * @param sz Number of elements of random vector
 */
Vec<double> rand(int sz) => array.randDouble(sz);

/**
 * Generate a uniform random positive Vec[Double] of a certain number of
 * elements
 * @param sz Number of elements of random vector
 */
Vec<double> randp(int sz) => array.randDoublePos(sz);

/**
 * Generate a gaussian(0, 1) random Vec[Double] of a certain number of
 * elements
 * @param sz Number of elements of random vector
 */
Vec<double> randn(int sz) => array.randNormal(sz);

/**
 * Generate a gaussian(mu, sigma) random Vec[Double] of a certain number of
 * elements
 * @param sz Number of elements of random vector
 * @param mu Mean of distribution
 * @param sigma Stdev of distribution
 */
Vec<double> randn2(int sz, double mu, double sigma) =>
    array.randNormal2(sz, mu, sigma);

/**
 * Generate a Vec[Double] containing a certain number of ones
 * @param sz Number of elements of ones vec
 */
Vec<double> ones(int sz) {
  var tmp = new List<double>(sz);
  array.fill(tmp, 1.0);
  return tmp;
}

/**
 * Generate a Vec[Double] containing a certain number of zeros
 * @param sz Number of elements of zero vec
 */
Vec<double> zeros(int sz) => new Vec(
    array.empty /*[Double]*/ (sz, ScalarTag.stDouble), ScalarTag.stDouble);

/**
 * Generate a Vec[Int] containing the range of integers specified
 * @param from Start of range
 * @param until End of range, excluded from result
 * @param step Stride of range
 */
Vec<int> vrange(int from, int until, [int step = 1]) =>
    array.range(from, until, step);

/**
 * Repeats a particular array some number of times
 *
 * @param v array of values to repeat
 * @param n number of repetitions
 * @tparam T type of elements in array
 */
List /*<T>*/ vrepeat /*[@spec(Boolean, Int, Long, Double) T: ST]*/ (
    List /*<T>*/ v, int n) {
  return array.flatten(iter.range(1, n).map((_) => v));
}
//}
