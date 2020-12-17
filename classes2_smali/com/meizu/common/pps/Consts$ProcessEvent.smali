.class public Lcom/meizu/common/pps/Consts$ProcessEvent;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessEvent"
.end annotation


# static fields
.field public static final ADD:I = 0x0

.field public static final PRE_LAUNCH_APPS:I = 0x6

.field public static final REMOVE:I = 0x1

.field public static final SET_ADJ:I = 0x2

.field public static final SET_FLAGS:I = 0x4

.field public static final SET_OOM:I = 0x3

.field public static final SET_PSS:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
