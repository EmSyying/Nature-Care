import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_company_model.freezed.dart';
part 'test_company_model.g.dart';

@freezed
class TestCompanyModel with _$TestCompanyModel {
  factory TestCompanyModel({
    final int? id,
    final int? memberId,
    final String? companyName,
    final String? khmerName,
    final String? position,
    final int? companySize,
    final int? numberOfBranches,
    final String? capitalInvestment,
    final String? yearFounded,
    final int? isPrimary,
    final String? companyDiagnosticReport,
    final String? companyMilestones,
    final String? companyLogo,
    final String? companySlogan,
    final String? personalInterest,
    final String? companyProfile,
    final String? companyProductAndService,
    final String? houseNo,
    final String? streetNo,
    final String? address,
    final String? phoneNumber,
    final String? email,
    final String? whatApp,
    final String? telegram,
    final String? messenger,
    final String? website,
    final String? facebook,
    final String? taxIdentificationNumber,
    final int? numberOfStaff,
    final String? ownerName,
  }) = _TestCompanyModel;

  factory TestCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$TestCompanyModelFromJson(json);
}
