.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$7hPE7B8Ek5O5gGvlR-Se3ejwgKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$7hPE7B8Ek5O5gGvlR-Se3ejwgKE;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final onInitialized(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$7hPE7B8Ek5O5gGvlR-Se3ejwgKE;->f$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$systemReady$30$PackageManagerService(I)V

    return-void
.end method
