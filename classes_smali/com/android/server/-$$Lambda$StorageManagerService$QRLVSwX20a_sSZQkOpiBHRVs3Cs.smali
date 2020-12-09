.class public final synthetic Lcom/android/server/-$$Lambda$StorageManagerService$QRLVSwX20a_sSZQkOpiBHRVs3Cs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$StorageManagerService$QRLVSwX20a_sSZQkOpiBHRVs3Cs;->f$0:Lcom/android/server/StorageManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$StorageManagerService$QRLVSwX20a_sSZQkOpiBHRVs3Cs;->f$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->lambda$setDebugFlags$3$StorageManagerService()V

    return-void
.end method
