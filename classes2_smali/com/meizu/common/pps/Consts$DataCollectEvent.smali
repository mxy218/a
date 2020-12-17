.class public Lcom/meizu/common/pps/Consts$DataCollectEvent;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCollectEvent"
.end annotation


# static fields
.field public static final ADD_APP_LAUNCH_TIME:I = 0x0

.field public static final ADD_FPS:I = 0x2

.field public static final ADD_SKIPPED_FRAME:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
