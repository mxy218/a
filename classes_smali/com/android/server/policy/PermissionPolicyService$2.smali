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

    .line 140
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 4

    .line 142
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 143
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 142
    invoke-static {p1, p3, p2}, Lcom/android/server/policy/PermissionPolicyService;->access$300(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 144
    return-void
.end method
