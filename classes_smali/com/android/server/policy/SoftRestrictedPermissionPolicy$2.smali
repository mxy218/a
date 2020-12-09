.class Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;
.super Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.source "SoftRestrictedPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$applyRestriction:Z

.field final synthetic val$hasRequestedLegacyExternalStorage:Z

.field final synthetic val$isWhiteListed:Z

.field final synthetic val$targetSDK:I


# direct methods
.method constructor <init>(ZZZI)V
    .registers 5

    .line 178
    iput-boolean p1, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$applyRestriction:Z

    iput-boolean p2, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    iput-boolean p3, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    iput p4, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    invoke-direct {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeGranted()Z
    .registers 3

    .line 204
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    goto :goto_d

    .line 207
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public getDesiredOpMode()I
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$applyRestriction:Z

    if-eqz v0, :cond_6

    .line 187
    const/4 v0, 0x3

    return v0

    .line 188
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    if-eqz v0, :cond_c

    .line 189
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public resolveAppOp()I
    .registers 2

    .line 181
    const/16 v0, 0x57

    return v0
.end method

.method public shouldSetAppOpIfNotDefault()Z
    .registers 3

    .line 199
    invoke-virtual {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->getDesiredOpMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method
