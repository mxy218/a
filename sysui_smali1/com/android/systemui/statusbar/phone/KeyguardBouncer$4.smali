.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .registers 2

    .line 825
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 828
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
