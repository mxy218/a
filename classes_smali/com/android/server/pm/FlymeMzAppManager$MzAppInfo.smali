.class Lcom/android/server/pm/FlymeMzAppManager$MzAppInfo;
.super Ljava/lang/Object;
.source "FlymeMzAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FlymeMzAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MzAppInfo"
.end annotation


# instance fields
.field factoryCodePath:Ljava/lang/String;

.field installed:Z

.field pkg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
