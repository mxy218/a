.class public Lcom/android/server/notification/ZenModeHelper$Callback;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onConfigChanged()V
    .registers 1

    .line 1630
    return-void
.end method

.method onConsolidatedPolicyChanged()V
    .registers 1

    .line 1633
    return-void
.end method

.method onPolicyChanged()V
    .registers 1

    .line 1632
    return-void
.end method

.method onZenModeChanged()V
    .registers 1

    .line 1631
    return-void
.end method
