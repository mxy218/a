.class public final Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
.super Ljava/lang/Object;
.source "MarqueeTicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Segment"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field isRemoved:Z

.field notification:Landroid/service/notification/StatusBarNotification;

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5

    .line 69
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    .line 71
    iput-object p3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object p4, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    return-void
.end method
