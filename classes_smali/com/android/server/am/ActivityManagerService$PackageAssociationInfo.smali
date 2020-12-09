.class final Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageAssociationInfo"
.end annotation


# instance fields
.field private final mAllowedPackageAssociations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDebuggable:Z

.field private final mSourcePackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/util/ArraySet;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 701
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mSourcePackage:Ljava/lang/String;

    .line 703
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    .line 704
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    .line 705
    return-void
.end method


# virtual methods
.method getAllowedPackageAssociations()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    return-object v0
.end method

.method isDebuggable()Z
    .registers 2

    .line 716
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return v0
.end method

.method isPackageAssociationAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 712
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method setDebuggable(Z)V
    .registers 2

    .line 720
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    .line 721
    return-void
.end method
