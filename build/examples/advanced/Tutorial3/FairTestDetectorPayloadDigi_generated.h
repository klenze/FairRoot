// automatically generated by the FlatBuffers compiler, do not modify

#ifndef FLATBUFFERS_GENERATED_FAIRTESTDETECTORPAYLOADDIGI_TESTDETECTORFLAT_H_
#define FLATBUFFERS_GENERATED_FAIRTESTDETECTORPAYLOADDIGI_TESTDETECTORFLAT_H_

#include "flatbuffers/flatbuffers.h"


namespace TestDetectorFlat {

struct Digi;
struct DigiPayload;

struct Digi FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  enum {
    VT_X = 4,
    VT_Y = 6,
    VT_Z = 8,
    VT_TIMESTAMP = 10,
    VT_TIMESTAMPERROR = 12
  };
  int32_t x() const { return GetField<int32_t>(VT_X, 0); }
  int32_t y() const { return GetField<int32_t>(VT_Y, 0); }
  int32_t z() const { return GetField<int32_t>(VT_Z, 0); }
  double timestamp() const { return GetField<double>(VT_TIMESTAMP, 0); }
  double timestampError() const { return GetField<double>(VT_TIMESTAMPERROR, 0); }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyField<int32_t>(verifier, VT_X) &&
           VerifyField<int32_t>(verifier, VT_Y) &&
           VerifyField<int32_t>(verifier, VT_Z) &&
           VerifyField<double>(verifier, VT_TIMESTAMP) &&
           VerifyField<double>(verifier, VT_TIMESTAMPERROR) &&
           verifier.EndTable();
  }
};

struct DigiBuilder {
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_x(int32_t x) { fbb_.AddElement<int32_t>(Digi::VT_X, x, 0); }
  void add_y(int32_t y) { fbb_.AddElement<int32_t>(Digi::VT_Y, y, 0); }
  void add_z(int32_t z) { fbb_.AddElement<int32_t>(Digi::VT_Z, z, 0); }
  void add_timestamp(double timestamp) { fbb_.AddElement<double>(Digi::VT_TIMESTAMP, timestamp, 0); }
  void add_timestampError(double timestampError) { fbb_.AddElement<double>(Digi::VT_TIMESTAMPERROR, timestampError, 0); }
  DigiBuilder(flatbuffers::FlatBufferBuilder &_fbb) : fbb_(_fbb) { start_ = fbb_.StartTable(); }
  DigiBuilder &operator=(const DigiBuilder &);
  flatbuffers::Offset<Digi> Finish() {
    auto o = flatbuffers::Offset<Digi>(fbb_.EndTable(start_, 5));
    return o;
  }
};

inline flatbuffers::Offset<Digi> CreateDigi(flatbuffers::FlatBufferBuilder &_fbb,
   int32_t x = 0,
   int32_t y = 0,
   int32_t z = 0,
   double timestamp = 0,
   double timestampError = 0) {
  DigiBuilder builder_(_fbb);
  builder_.add_timestampError(timestampError);
  builder_.add_timestamp(timestamp);
  builder_.add_z(z);
  builder_.add_y(y);
  builder_.add_x(x);
  return builder_.Finish();
}

struct DigiPayload FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  enum {
    VT_DIGIS = 4,
    VT_BIGBUFFER = 6
  };
  const flatbuffers::Vector<flatbuffers::Offset<Digi>> *digis() const { return GetPointer<const flatbuffers::Vector<flatbuffers::Offset<Digi>> *>(VT_DIGIS); }
  const flatbuffers::Vector<uint8_t> *bigBuffer() const { return GetPointer<const flatbuffers::Vector<uint8_t> *>(VT_BIGBUFFER); }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyField<flatbuffers::uoffset_t>(verifier, VT_DIGIS) &&
           verifier.Verify(digis()) &&
           verifier.VerifyVectorOfTables(digis()) &&
           VerifyField<flatbuffers::uoffset_t>(verifier, VT_BIGBUFFER) &&
           verifier.Verify(bigBuffer()) &&
           verifier.EndTable();
  }
};

struct DigiPayloadBuilder {
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_digis(flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<Digi>>> digis) { fbb_.AddOffset(DigiPayload::VT_DIGIS, digis); }
  void add_bigBuffer(flatbuffers::Offset<flatbuffers::Vector<uint8_t>> bigBuffer) { fbb_.AddOffset(DigiPayload::VT_BIGBUFFER, bigBuffer); }
  DigiPayloadBuilder(flatbuffers::FlatBufferBuilder &_fbb) : fbb_(_fbb) { start_ = fbb_.StartTable(); }
  DigiPayloadBuilder &operator=(const DigiPayloadBuilder &);
  flatbuffers::Offset<DigiPayload> Finish() {
    auto o = flatbuffers::Offset<DigiPayload>(fbb_.EndTable(start_, 2));
    return o;
  }
};

inline flatbuffers::Offset<DigiPayload> CreateDigiPayload(flatbuffers::FlatBufferBuilder &_fbb,
   flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<Digi>>> digis = 0,
   flatbuffers::Offset<flatbuffers::Vector<uint8_t>> bigBuffer = 0) {
  DigiPayloadBuilder builder_(_fbb);
  builder_.add_bigBuffer(bigBuffer);
  builder_.add_digis(digis);
  return builder_.Finish();
}

inline const TestDetectorFlat::DigiPayload *GetDigiPayload(const void *buf) { return flatbuffers::GetRoot<TestDetectorFlat::DigiPayload>(buf); }

inline bool VerifyDigiPayloadBuffer(flatbuffers::Verifier &verifier) { return verifier.VerifyBuffer<TestDetectorFlat::DigiPayload>(); }

inline void FinishDigiPayloadBuffer(flatbuffers::FlatBufferBuilder &fbb, flatbuffers::Offset<TestDetectorFlat::DigiPayload> root) { fbb.Finish(root); }

}  // namespace TestDetectorFlat

#endif  // FLATBUFFERS_GENERATED_FAIRTESTDETECTORPAYLOADDIGI_TESTDETECTORFLAT_H_
