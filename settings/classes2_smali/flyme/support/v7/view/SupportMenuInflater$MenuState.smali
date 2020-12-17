.class Lflyme/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroidx/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lflyme/support/v7/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lflyme/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .registers 3

    .line 329
    iput-object p1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 332
    invoke-virtual {p0}, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/view/SupportMenuInflater$MenuState;)Landroidx/core/view/ActionProvider;
    .registers 1

    .line 270
    iget-object p0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    return-object p0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .registers 2

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 420
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 497
    :try_start_0
    iget-object p0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    invoke-static {p0}, Lflyme/support/v7/view/SupportMenuInflater;->access$100(Lflyme/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 498
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p2, 0x1

    .line 499
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 500
    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 502
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SupportMenuInflater"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .registers 7

    .line 425
    iget-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 426
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 427
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 428
    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 429
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 430
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 431
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 432
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 434
    iget v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_3d

    .line 435
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 438
    :cond_3d
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 439
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    invoke-static {v0}, Lflyme/support/v7/view/SupportMenuInflater;->access$100(Lflyme/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 443
    new-instance v0, Lflyme/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    .line 444
    invoke-static {v1}, Lflyme/support/v7/view/SupportMenuInflater;->access$400(Lflyme/support/v7/view/SupportMenuInflater;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lflyme/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_66

    .line 440
    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_66
    :goto_66
    instance-of v0, p1, Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_6d

    move-object v1, p1

    check-cast v1, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 448
    :cond_6d
    iget v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_85

    if-eqz v0, :cond_7b

    .line 450
    move-object v0, p1

    check-cast v0, Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Lflyme/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_85

    .line 451
    :cond_7b
    instance-of v0, p1, Lflyme/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_85

    .line 452
    move-object v0, p1

    check-cast v0, Lflyme/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v3}, Lflyme/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    .line 457
    :cond_85
    :goto_85
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 459
    invoke-static {}, Lflyme/support/v7/view/SupportMenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    invoke-static {v2}, Lflyme/support/v7/view/SupportMenuInflater;->access$600(Lflyme/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v2

    .line 458
    invoke-direct {p0, v0, v1, v2}, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 460
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    .line 463
    :cond_9d
    iget v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_ae

    if-nez v2, :cond_a7

    .line 465
    invoke-static {p1, v0}, Landroidx/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    goto :goto_ae

    :cond_a7
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_ae
    :goto_ae
    iget-object p0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz p0, :cond_b5

    .line 473
    invoke-static {p1, p0}, Landroidx/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_b5
    return-void
.end method


# virtual methods
.method public addItem()V
    .registers 6

    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 479
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .registers 6

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 484
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .registers 1

    .line 490
    iget-boolean p0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return p0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .registers 4

    .line 348
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    invoke-static {v0}, Lflyme/support/v7/view/SupportMenuInflater;->access$100(Lflyme/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 350
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 351
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 353
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 354
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 356
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 357
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 359
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .registers 6

    .line 366
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    invoke-static {v0}, Lflyme/support/v7/view/SupportMenuInflater;->access$100(Lflyme/support/v7/view/SupportMenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 369
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    .line 370
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 371
    sget v2, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v3, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 372
    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 374
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 375
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 376
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 377
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 379
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 380
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 381
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 383
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_74

    .line 387
    :cond_70
    iget v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 389
    :goto_74
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 390
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 391
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 392
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 393
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 394
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 395
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 396
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_bf

    const/4 v0, 0x1

    goto :goto_c0

    :cond_bf
    move v0, v1

    :goto_c0
    if-eqz v0, :cond_df

    .line 399
    iget v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v2, :cond_df

    iget-object v2, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v2, :cond_df

    .line 400
    iget-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 401
    invoke-static {}, Lflyme/support/v7/view/SupportMenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->this$0:Lflyme/support/v7/view/SupportMenuInflater;

    .line 402
    invoke-static {v3}, Lflyme/support/v7/view/SupportMenuInflater;->access$300(Lflyme/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;

    move-result-object v3

    .line 400
    invoke-direct {p0, v0, v2, v3}, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ActionProvider;

    iput-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    goto :goto_eb

    :cond_df
    if-eqz v0, :cond_e8

    const-string v0, "SupportMenuInflater"

    const-string v2, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 405
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 411
    :goto_eb
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    iput-boolean v1, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .registers 2

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 337
    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 338
    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 339
    iput v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 341
    iput-boolean v0, p0, Lflyme/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
