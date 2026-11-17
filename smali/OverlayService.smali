.class public Lcom/rocket/overlay/OverlayService;
.super Landroid/app/Service;

.field private menu:Lcom/rocket/overlay/MenuOverlay;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/rocket/overlay/OverlayService;
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    return-void
.end method

.method public onCreate()V
    .locals 2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V
    new-instance v0, Lcom/rocket/overlay/MenuOverlay;
    invoke-direct {v0, p0}, Lcom/rocket/overlay/MenuOverlay;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/rocket/overlay/OverlayService;->menu:Lcom/rocket/overlay/MenuOverlay;
    invoke-virtual {v0}, Lcom/rocket/overlay/MenuOverlay;->show()V
    return-void
.end method

.method public onDestroy()V
    .locals 1
    iget-object v0, p0, Lcom/rocket/overlay/OverlayService;->menu:Lcom/rocket/overlay/MenuOverlay;
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Lcom/rocket/overlay/MenuOverlay;->hide()V
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    const/4 v0, 0x0
    return-object v0
.end method
