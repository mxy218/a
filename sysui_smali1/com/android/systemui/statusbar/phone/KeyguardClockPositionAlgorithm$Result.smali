.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public clockAlpha:F

.field public clockX:I

.field public clockY:I

.field public stackScrollerPadding:I

.field public stackScrollerPaddingAdjustment:I

.field public stackScrollerPaddingExpanded:I

.field public stackScrollerPaddingRegular:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
