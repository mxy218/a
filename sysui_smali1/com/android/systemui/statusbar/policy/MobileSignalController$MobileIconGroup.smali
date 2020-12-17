.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileIconGroup"
.end annotation


# instance fields
.field final mDataContentDescription:I

.field final mDataType:I

.field final mIsWide:Z

.field final mQsDataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V
    .registers 13

    .line 1477
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 1479
    iput p10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 1480
    iput p11, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1481
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 1482
    iput p11, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    return-void
.end method
