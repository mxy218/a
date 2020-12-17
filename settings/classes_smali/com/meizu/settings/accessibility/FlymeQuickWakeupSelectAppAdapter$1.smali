.class Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;
.super Ljava/lang/Object;
.source "FlymeQuickWakeupSelectAppAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->setGuestureSwithView(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 252
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-static {p1, p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$002(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;Z)Z

    if-eqz p2, :cond_28

    .line 254
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$100(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 255
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    .line 256
    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    .line 257
    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$300(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 255
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3c

    .line 260
    :cond_28
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    .line 261
    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    .line 262
    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$300(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 260
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$400(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 265
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$400(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->access$000(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;->onCheckChanged(Z)V

    .line 267
    :cond_53
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    return-void
.end method
