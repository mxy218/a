.class Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IFVerificationParams"
.end annotation


# instance fields
.field pkg:Landroid/content/pm/PackageParser$Package;

.field replacing:Z

.field userId:I

.field verifierUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;ZII)V
    .registers 5

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 995
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    .line 996
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    .line 997
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    .line 998
    return-void
.end method
