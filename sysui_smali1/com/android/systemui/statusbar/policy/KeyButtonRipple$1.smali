.class Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->access$100(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 444
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->access$100(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->access$200(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 445
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->access$302(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z

    .line 446
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->access$402(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z

    .line 447
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2d
    return-void
.end method
