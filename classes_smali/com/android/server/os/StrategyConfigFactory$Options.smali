.class public Lcom/android/server/os/StrategyConfigFactory$Options;
.super Ljava/lang/Object;
.source "StrategyConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/StrategyConfigFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public configName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public propertyLen:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method
