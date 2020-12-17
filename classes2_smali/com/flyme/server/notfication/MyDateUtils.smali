.class public Lcom/flyme/server/notfication/MyDateUtils;
.super Ljava/lang/Object;
.source "MyDateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate(J)Ljava/lang/Long;
    .registers 5
    .param p0, "date"  # J

    .line 12
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 13
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 14
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 15
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 16
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 17
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 18
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method
