function clearCache() {
    localStorage.removeItem('apps'); // Remove the cached apps
    // You can add more cache items to remove if needed
    alert('Cache cleared successfully!');
}