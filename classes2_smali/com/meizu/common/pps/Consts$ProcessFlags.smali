.class public Lcom/meizu/common/pps/Consts$ProcessFlags;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessFlags"
.end annotation


# static fields
.field public static FOREGROUND:I

.field public static NOTIFICATION:I

.field public static RECENT:I

.field public static SHOWNUI:I

.field public static VISIBLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/meizu/common/pps/Consts$ProcessFlags;->FOREGROUND:I

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    .line 14
    const/4 v0, 0x4

    sput v0, Lcom/meizu/common/pps/Consts$ProcessFlags;->NOTIFICATION:I

    .line 15
    const/16 v0, 0x8

    sput v0, Lcom/meizu/common/pps/Consts$ProcessFlags;->RECENT:I

    .line 16
    const/16 v0, 0x10

    sput v0, Lcom/meizu/common/pps/Consts$ProcessFlags;->SHOWNUI:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
