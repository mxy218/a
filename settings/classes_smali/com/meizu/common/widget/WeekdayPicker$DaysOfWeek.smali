.class final Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;
.super Ljava/lang/Object;
.source "WeekdayPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/WeekdayPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 448
    fill-array-data v0, :array_a

    sput-object v0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    return-void
.end method

.method private isSet(I)Z
    .registers 3

    .line 517
    iget p0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-lez p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .registers 5

    const/4 v0, 0x7

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    .line 548
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->isSet(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return-object v1
.end method

.method public getCoded()I
    .registers 1

    .line 539
    iget p0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    return p0
.end method

.method public set(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    .line 528
    iget p2, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    goto :goto_13

    .line 530
    :cond_b
    iget p2, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    :goto_13
    return-void
.end method

.method public setDays(I)V
    .registers 2

    .line 466
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    return-void
.end method
