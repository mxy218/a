.class public Lcom/android/settings/datausage/CycleAdapter$CycleItem;
.super Ljava/lang/Object;
.source "CycleAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field public end:J

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .registers 6

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    .line 197
    iput-wide p2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    .line 198
    iput-wide p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .registers 4

    .line 217
    iget-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide p0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 186
    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 208
    instance-of v0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 209
    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 210
    iget-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_18

    iget-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    iget-wide p0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
