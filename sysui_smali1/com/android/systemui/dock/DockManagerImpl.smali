.class public Lcom/android/systemui/dock/DockManagerImpl;
.super Ljava/lang/Object;
.source "DockManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .registers 2

    return-void
.end method

.method public isDocked()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .registers 2

    return-void
.end method
