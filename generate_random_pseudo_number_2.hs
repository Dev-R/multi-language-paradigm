import Data.ByteArray.Hash
import Data.ByteString (pack, cons)
import Data.Word (Word8, Word64)

random :: Word64 -> Word64 -> [Word8] -> Double
random a b cs = (subtract 1) . (/(2**63)) . read . drop 8 . show $ sipHash (SipKey a b) (pack cs)