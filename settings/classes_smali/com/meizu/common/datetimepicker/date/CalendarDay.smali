.class public Lcom/meizu/common/datetimepicker/date/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"


# instance fields
.field day:I

.field month:I

.field year:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/common/datetimepicker/date/CalendarDay;->setDay(III)V

    return-void
.end method


# virtual methods
.method public setDay(III)V
    .registers 4

    .line 44
    iput p1, p0, Lcom/meizu/common/datetimepicker/date/CalendarDay;->year:I

    .line 45
    iput p2, p0, Lcom/meizu/common/datetimepicker/date/CalendarDay;->month:I

    .line 46
    iput p3, p0, Lcom/meizu/common/datetimepicker/date/CalendarDay;->day:I

    return-void
.end method
