.class Lcom/android/server/policy/PermissionPolicyService$2;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PermissionPolicyService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/PermissionPolicyService;

    .line 140
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 6
    .param p1, "op"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 143
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 142
    invoke-static {v0, p3, v1}, Lcom/android/server/policy/PermissionPolicyService;->access$300(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 144
    return-void
.end method
