.class Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    .line 1393
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V
    .registers 3

    .line 1393
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1396
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_33

    .line 1398
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_enhanceseekbar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {v4}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$700(Lcom/meizu/common/widget/EnhanceSeekBar;)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$800(Lcom/meizu/common/widget/EnhanceSeekBar;)I

    move-result p0

    aget-object p0, v4, p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_33
    return-void
.end method
