.class public Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/UserSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    .line 53
    iget-object p1, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_28

    const p1, 0x7f120bdd

    .line 55
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    const p1, 0x108035e

    .line 56
    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_4f

    .line 59
    :cond_28
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    .line 60
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 62
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_4f

    .line 64
    :cond_44
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    :goto_4f
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;)Landroid/os/UserHandle;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;)Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;->name:Ljava/lang/String;

    return-object p0
.end method
