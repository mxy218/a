.class Lcom/android/keyguard/CarrierTextController$4;
.super Ljava/lang/Object;
.source "CarrierTextController.java"

# interfaces
.implements Lcom/android/keyguard/CarrierTextController$CarrierStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierTextController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierTextController;)V
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$4;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshFinished()V
    .registers 1

    .line 887
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$4;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    return-void
.end method
