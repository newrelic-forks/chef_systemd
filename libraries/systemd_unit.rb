
module Systemd
  module Unit
    OPTIONS ||= %w(
      Description=
      Documentation=
      Requires=
      RequiresOverridable=
      Requisite=
      RequisiteOverridable=
      Wants=
      BindsTo=
      PartOf=
      Conflicts=
      Before=
      After=
      OnFailure=
      PropagatesReloadTo=
      ReloadPropagatedFrom=
      JoinsNamespaceOf=
      RequiresMountsFor=
      OnFailureJobMode=
      IgnoreOnIsolate=
      IgnoreOnSnapshot=
      StopWhenUnneeded=
      RefuseManualStart=
      RefuseManualStop=
      AllowIsolate=
      DefaultDependencies=
      JobTimeoutSec=
      JobTimeoutAction=
      JobTimeoutRebootArgument=
      ConditionArchitecture=
      ConditionVirtualization=
      ConditionHost=
      ConditionKernelCommandLine=
      ConditionSecurity=
      ConditionCapability=
      ConditionACPower=
      ConditionNeedsUpdate=
      ConditionFirstBoot=
      ConditionPathExists=
      ConditionPathExistsGlob=
      ConditionPathIsDirectory=
      ConditionPathIsSymbolicLink=
      ConditionPathIsMountPoint=
      ConditionPathIsReadWrite=
      ConditionDirectoryNotEmpty=
      ConditionFileNotEmpty=
      ConditionFileIsExecutable=
      AssertArchitecture=
      AssertVirtualization=
      AssertHost=
      AssertKernelCommandLine=
      AssertSecurity=
      AssertCapability=
      AssertACPower=
      AssertNeedsUpdate=
      AssertFirstBoot=
      AssertPathExists=
      AssertPathExistsGlob=
      AssertPathIsDirectory=
      AssertPathIsSymbolicLink=
      AssertPathIsMountPoint=
      AssertPathIsReadWrite=
      AssertDirectoryNotEmpty=
      AssertFileNotEmpty=
      AssertFileIsExecutable=
      SourcePath=
    )
  end
end
