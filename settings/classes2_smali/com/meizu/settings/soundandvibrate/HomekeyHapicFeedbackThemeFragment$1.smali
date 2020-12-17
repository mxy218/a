.class Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;
.super Landroid/database/ContentObserver;
.source "HomekeyHapicFeedbackThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Landroid/os/Handler;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomekeyHapicFeedbackThemeFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$000(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 117
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$100(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;I)V

    goto :goto_56

    .line 118
    :cond_31
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$200(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 119
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$100(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;I)V

    goto :goto_56

    .line 120
    :cond_44
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$300(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 121
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$100(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;I)V

    :cond_56
    :goto_56
    return-void
.end method
