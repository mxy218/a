.class public Lcom/meizu/common/pps/Consts$SystemEvent;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemEvent"
.end annotation


# static fields
.field public static final DO_INIT:I = 0x0

.field public static final SET_APP_LIST:I = 0x1

.field public static final SET_AUDIO_STATE:I = 0x3

.field public static final SET_KEYGUARD_STATE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
