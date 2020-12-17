.class public Lcom/meizu/common/pps/Consts$UEventType;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UEventType"
.end annotation


# static fields
.field public static final UEVENT_CPU:I = 0x2

.field public static final UEVENT_CPULOADER:I = 0x3

.field public static final UEVENT_IO:I = 0x5

.field public static final UEVENT_MEM:I = 0x4

.field public static final UEVENT_NET:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
