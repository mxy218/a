.class Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;
.super Ljava/lang/Object;
.source "FlymeLockItemSingleArrayGroupAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->initPartTwoView(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;Lcom/meizu/settings/widget/MzAppEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

.field final synthetic val$holder:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

.field final synthetic val$item:Lcom/meizu/settings/widget/MzAppEntry;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Lcom/meizu/settings/widget/MzAppEntry;Ljava/lang/String;Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)V
    .registers 5

    .line 305
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$item:Lcom/meizu/settings/widget/MzAppEntry;

    iput-object p3, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$holder:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    const-string p1, "com.meizu.connectivitysettings"

    if-nez p2, :cond_30

    .line 310
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$item:Lcom/meizu/settings/widget/MzAppEntry;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/meizu/settings/widget/MzAppEntry;->mIsLock:Z

    .line 311
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$100(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 314
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$200(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lmeizu/security/AccessControlManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmeizu/security/AccessControlManager;->delPackageName(Ljava/lang/String;)Z

    .line 317
    :cond_24
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$200(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lmeizu/security/AccessControlManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$pkgName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmeizu/security/AccessControlManager;->delPackageName(Ljava/lang/String;)Z

    goto :goto_75

    .line 319
    :cond_30
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$item:Lcom/meizu/settings/widget/MzAppEntry;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/meizu/settings/widget/MzAppEntry;->mIsLock:Z

    .line 320
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$100(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 323
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$200(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lmeizu/security/AccessControlManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmeizu/security/AccessControlManager;->addPackageName(Ljava/lang/String;)Z

    .line 326
    :cond_50
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$300(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$pkgName:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 327
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    iget-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$holder:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

    iget-object p2, p2, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$pkgName:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$400(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Landroid/widget/CheckBox;Ljava/lang/String;)V

    goto :goto_75

    .line 329
    :cond_6a
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$200(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lmeizu/security/AccessControlManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;->val$pkgName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmeizu/security/AccessControlManager;->addPackageName(Ljava/lang/String;)Z

    :goto_75
    return-void
.end method
