.class Lcom/android/server/rollback/RollbackPackageHealthObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "RollbackPackageHealthObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackPackageHealthObserver;->listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field final synthetic val$moduleMetadataPackage:Landroid/content/pm/VersionedPackage;

.field final synthetic val$rollbackId:I

.field final synthetic val$rollbackManager:Landroid/content/rollback/RollbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)V
    .registers 5

    .line 296
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->this$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->val$rollbackManager:Landroid/content/rollback/RollbackManager;

    iput p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->val$rollbackId:I

    iput-object p4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->val$moduleMetadataPackage:Landroid/content/pm/VersionedPackage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 299
    iget-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->this$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->val$rollbackManager:Landroid/content/rollback/RollbackManager;

    iget v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->val$rollbackId:I

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;->val$moduleMetadataPackage:Landroid/content/pm/VersionedPackage;

    invoke-static {p1, p2, v0, p0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->access$000(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    .line 301
    return-void
.end method
