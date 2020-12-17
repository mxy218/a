.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
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

    .line 905
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockScreenChanged(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 908
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$702(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 909
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    return-void
.end method
