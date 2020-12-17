.class public Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PercentageBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final order:I

.field public final paint:Landroid/graphics/Paint;

.field public final percentage:F


# direct methods
.method protected constructor <init>(IFLandroid/graphics/Paint;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->order:I

    .line 49
    iput p2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    .line 50
    iput-object p3, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;)I
    .registers 2

    .line 55
    iget p0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->order:I

    iget p1, p1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->order:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 42
    check-cast p1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->compareTo(Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;)I

    move-result p0

    return p0
.end method
