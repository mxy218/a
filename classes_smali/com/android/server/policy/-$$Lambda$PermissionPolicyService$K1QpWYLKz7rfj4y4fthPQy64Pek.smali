.class public final synthetic Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;->f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;->f$0:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1}, Lcom/android/server/policy/PermissionPolicyService;->lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method
