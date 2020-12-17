.class Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;
.super Landroid/database/ContentObserver;
.source "AbsPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;Landroid/os/Handler;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 142
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$000(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 143
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$100(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-static {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$200(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p2, p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    iput-boolean v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    goto :goto_6e

    .line 144
    :cond_25
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$300(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 145
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    .line 146
    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$100(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-static {p2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$400(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 148
    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    invoke-static {p2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->access$500(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    .line 150
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget-object p2, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    if-eqz p2, :cond_68

    iget p2, p2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    if-nez p2, :cond_68

    .line 151
    iget p0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    const p2, 0x3d4ccccd  # 0.05f

    add-float/2addr p2, p0

    iput p2, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    const p2, 0x3dcccccd  # 0.1f

    sub-float/2addr p0, p2

    .line 152
    iput p0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    goto :goto_6e

    .line 154
    :cond_68
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;

    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    :cond_6e
    :goto_6e
    return-void
.end method
