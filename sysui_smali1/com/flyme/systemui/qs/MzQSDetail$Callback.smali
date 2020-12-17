.class public interface abstract Lcom/flyme/systemui/qs/MzQSDetail$Callback;
.super Ljava/lang/Object;
.source "MzQSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onScanStateChanged(Z)V
.end method

.method public abstract onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
.end method

.method public onShowingDetailStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public abstract onShowingTilesEdit(Z)V
.end method

.method public abstract onToggleStateChanged(Z)V
.end method
