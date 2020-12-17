.class Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;
.super Ljava/lang/Object;
.source "AppCloneAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCheckedChangeListener"
.end annotation


# instance fields
.field private mInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    invoke-static {v0}, Lcom/meizu/settings/appclone/AppCloneAdapter;->access$000(Lcom/meizu/settings/appclone/AppCloneAdapter;)Lcom/meizu/settings/appclone/AppCloneVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/appclone/AppCloneVersion;->isUpgradeInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "AppCloneAdaper"

    const-string/jumbo p1, "onCheckedChanged appclone upgrade in progress"

    .line 52
    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    if-eqz p2, :cond_2f

    .line 56
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->access$100(Lcom/meizu/settings/appclone/AppCloneAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    invoke-virtual {p0}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/appclone/AppCloneState;->setAppCloneEnabled(ZLjava/lang/String;ZZI)Z

    return-void

    .line 62
    :cond_2f
    iget-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    invoke-virtual {p2}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/meizu/settings/appclone/AppCloneUtil;->isPkgLockedByAppLock(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 63
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    iget-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    invoke-static {p1, p2}, Lcom/meizu/settings/appclone/AppCloneAdapter;->access$202(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/settings/appclone/AppCloneAppInfo;)Lcom/meizu/settings/appclone/AppCloneAppInfo;

    .line 64
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneAdapter;->access$300(Lcom/meizu/settings/appclone/AppCloneAdapter;)Landroid/app/Fragment;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->startVerifyAppLock(Landroid/app/Fragment;)V

    goto :goto_59

    .line 66
    :cond_4c
    iget-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/meizu/settings/appclone/AppCloneAdapter;->access$202(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/settings/appclone/AppCloneAppInfo;)Lcom/meizu/settings/appclone/AppCloneAppInfo;

    .line 67
    iget-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    invoke-static {p2, p1, p0}, Lcom/meizu/settings/appclone/AppCloneAdapter;->access$400(Lcom/meizu/settings/appclone/AppCloneAdapter;Landroid/widget/CompoundButton;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V

    :goto_59
    return-void
.end method
