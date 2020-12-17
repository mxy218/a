.class Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
.super Ljava/lang/Object;
.source "PreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/PreviewInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetInfo"
.end annotation


# instance fields
.field contextPackage:Ljava/lang/String;

.field layoutId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$1;)V
    .registers 2

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>()V

    return-void
.end method
