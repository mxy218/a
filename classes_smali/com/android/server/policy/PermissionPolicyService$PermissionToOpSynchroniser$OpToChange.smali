.class Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpToChange"
.end annotation


# instance fields
.field final code:I

.field final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V
    .registers 5
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "code"  # I

    .line 801
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->this$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 803
    iput-object p3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    .line 804
    iput p4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    .line 805
    return-void
.end method
